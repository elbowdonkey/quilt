require 'sinatra'
require 'sinatra/activerecord'
require './environments'

require './models/artist'
require './models/frame'
require './models/patch'
require './models/layer'
require './models/pixel'

module Quilt
  class App < Sinatra::Base
    get "/" do
      # person arrives. they are not at a random slug, so we redirect them.
      redirect to "/p/#{SecureRandom.hex}/"
    end

    get '/p/*/' do |slug|
      prepare_artist slug
      @patch = prepare_patch

      erb :index
    end

    # get "/assets/js/application.js" do
    #   content_type :js
    #   @scheme = ENV['RACK_ENV'] == "production" ? "wss://" : "ws://"
    #   erb :"application.js"
    # end

    def current_frame
      @current_frame ||= Frame.first # this could change to another frame some day
    end
    #
    def prepare_artist(slug)
      @artist = Artist.find_or_create_by slug: slug
    end

    def prepare_patch
      frame_width = current_frame.rules[:patches][:width]
      frame_height = current_frame.rules[:patches][:height]
      patch_width = current_frame.rules[:pixels][:width]
      patch_height = current_frame.rules[:pixels][:height]

      patches = current_frame.patches.where(artist_id: @artist.id)

      if patches.count == 0
        patch = current_frame.patches.new(
          artist_id: @artist.id,
          width: patch_width,
          height: patch_height
        )

        assign_x_y_to patch

        patch.save

        layer = patch.layers.create(type: "First")

        current_frame.rules[:pixels][:width].times do |x|
          current_frame.rules[:pixels][:height].times do |y|
            layer.pixels.create(
              x: x,
              y: y,
              r: 0,
              g: 0,
              b: 0,
              a: 1.0
            )
          end
        end
      end

      @artist.patches.first
    end

    def assign_x_y_to(patch)
      last_patch = current_frame.patches.order(:id).last

      unless last_patch
        patch.x = 0
        patch.y = 0
        return
      end

      last_x = last_patch.x
      last_y = last_patch.y

      if last_x >= current_frame.rules[:patches][:width]
        x = 0
        y = last_y + 1
      else
        x = last_x + 1
        y = last_y
      end

      patch.x = x
      patch.y = y
    end
  end
end

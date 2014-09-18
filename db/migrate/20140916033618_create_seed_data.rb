class CreateSeedData < ActiveRecord::Migration
  def change
    quilbot = Quilbot.create(name: "Quilbot")
    quilbot.frames.create(
      rules: {
        pixels: {
          width: 8,
          height: 8
        },
        patches: {
          width: 8,
          height: 8
        }
      }
    )
  end
end

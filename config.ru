require './app'
require './middlewares/backend'

use Quilt::Backend

run Quilt::App

require 'gosu'

# this class opens game window
class WhackARuby < Gosu::Window
  def initialize
    super(800, 600)
    self.caption = 'Whack it good! Get that Ruby!'
    @image = Gosu::Image.new('images/ruby.png')
    @x = 200
    @y = 200
    @width = 50
    @height = 43
  end

  def draw
    @image.draw(@x - @width, @y - @height, 1)
  end
end

window = WhackARuby.new
window.show

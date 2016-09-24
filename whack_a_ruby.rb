require 'gosu'

# this class opens game window
class WhackARuby < Gosu::Window
  def initialize
    super(800, 600)
    self.caption = 'Whack it good! Get that Ruby!'
    @image = Gosu::Image.new('ruby.png')
  end

  def draw
    
  end
end

window = WhackARuby.new
window.show

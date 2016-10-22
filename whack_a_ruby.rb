require 'gosu'

class WhackARuby < Gosu::Window
  def initialize
    super(800, 600)
    self.caption = 'Whack it good! Get that Ruby!'
    @image = Gosu::Image.new('images/ruby.png')
    @x = 200
    @y = 200
    @width = 50
    @height = 43
    @velocity_x = 5
    @velocity_y = 5
    @visible = 0
    @hammer_image = Gosu::Image.new('images/hammer.png')
    @hit = 0
  end

  # below draw method checks for instances in use
  def draw
    if @visible > 0
      @image.draw(@x - @width, @y - @height, 1)
    end
    @hammer_image.draw(mouse_x - 40, mouse_y - 10, 1)
  end

  # below update method moves  images around window
  def update
    @x += @velocity_x
    @y += @velocity_y
    @velocity_x *= -1 if @x + @width / 2 > 800 || @x - @width / 2 < 0
    @velocity_y *= -1 if @y + @height / 2 > 600 || @y - @height / 2 < 0
    @visible -= 1
    @visible = 30 if @visible < -10 && rand < 0.01
  end
end

window = WhackARuby.new
window.show

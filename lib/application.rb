require 'hotcocoa'

class MyApp
  include HotCocoa
  APP_NAME = "MyApp"

  def start
    application(:name => APP_NAME) do |app|
      app.delegate = self
      window(:size => [640, 480], :center => true, :title => APP_NAME) do |win|
        win.will_close { exit }
      end
    end
  end
end

MyApp.new.start

class ExampleController < ApplicationController
  def test1
    flash[:hoge] = '改行したい<br>改行できた<br>やったー!'
  end

  def test2
    flash.keep(:hoge)
  end

  def test3
  end
end

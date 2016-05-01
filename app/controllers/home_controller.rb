class HomeController < ApplicationController
  def index
  end

  def data
    tasks = Task.all
    

    render :json=>{
              :data => tasks.map{|task|{
                          :id => task.id,
                          :text => task.text,
                          :start_date => task.start_date.to_formatted_s(:db),
                          :duration => task.duration,
                          :progress => task.progress,
                          :sortorder => task.sortorder,
                          :parent => task.parent
                      }}
           }
  end
end

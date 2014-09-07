class PagesController < ApplicationController
  def home
  end

  def createMealPlan
  end

  def monday
    @date = Date.today.beginning_of_week.tomorrow.to_s(:db)
    @date = @date.split("-")
    @month = @date[1]
    if(@month[0]=='0')
      @month=@month[1]
    end
    @day = @date[2]
    if(@day[0]=='0')
      @day=@day[1]
    end
    @year = @date[0]
    @scrapeDate = @month+'/'+@day+'/'+@year

    @clarkTargetURL = "http://104.131.62.151:8080/MealPlan/Example?date=#{@scrapeDate}&location=CLARK"

    uri = URI(@clarkTargetURL)
    @clarkJSON = JSON.parse(Net::HTTP.get(uri))


    @xroadTargetURL = "http://104.131.62.151:8080/MealPlan/Example?date=#{@scrapeDate}&location=CROSSROADS"
    uri = URI(@xroadTargetURL)
    @xroadJSON = JSON.parse(Net::HTTP.get(uri))
    @xroadDinner = @xroadJSON["CROSSROADS"]["dinner"]
    @xroadBreakfast = @xroadJSON["CROSSROADS"]["breakfast"]
    @xroadLunch = @xroadJSON["CROSSROADS"]["lunch"]


    @cafeTargetURL = "http://104.131.62.151:8080/MealPlan/Example?date=#{@scrapeDate}&location=CAFE"
    @foothillTargetURL = "http://104.131.62.151:8080/MealPlan/Example?date=#{@scrapeDate}&location=FOOTHILL"
  end

  def tuesday
  end

  def wednesday
  end

  def thursday
  end

  def friday
  end
end

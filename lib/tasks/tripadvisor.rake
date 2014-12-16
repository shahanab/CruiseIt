namespace :tripadvisor do

  desc "TODO"
  task scrape: :environment do
    Destination.all.each do |destination|
      Tripadvisor.populate(destination) unless destination.tripadvisor_id.nil?
    end
  end
end
# heroku schedularlashd
# heroku run rake tripadvisor:scrape
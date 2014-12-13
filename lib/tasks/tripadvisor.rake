namespace :tripadvisor do

  desc "TODO"
  task scrape: :environment do
    Tripadvisor.populate
  end
end
# heroku schedularlashd
# heroku run rake tripadvisor:scrape
puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

10.times do
    # create a game with random data
    Freebie.create(
      item_name: Faker::Camera.brand_with_model,
      value: rand(300..600),
      dev_id: Dev.all.sample.id,
      company_id: Company.all.sample.id
    )
  end

ipad = Freebie.create(item_name: "iPad", value: 700, dev_id: rick.id, company_id: google.id)

puts "Seeding done!"

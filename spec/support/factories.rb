FactoryGirl.define do

  factory :artist do |n|
    n.sequence(:name) { |x| "#{x}ob Marley" }
    image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
  end

end

FactoryGirl.define do
  
  factory :song do
    title "One Love"
    artist
  end
end

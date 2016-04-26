require 'random_data'

FactoryGirl.define do
   factory :vote do
     post
     topic
     user
   end
 end

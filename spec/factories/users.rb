# coding: utf-8
# frozen_string_literal: true

FactoryBot.define do
  factory :user, class: User do
    name  { FFaker::Internet.user_name }
    email  { FFaker::Internet.email }
    password { FFaker::Internet.password  }
  end
end

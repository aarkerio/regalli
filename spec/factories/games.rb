# coding: utf-8
# frozen_string_literal: true
FactoryBot.define do
  factory :question do
    played { Time.now }
    yscore 21
    tscore 14
    oponent
    user
  end

end

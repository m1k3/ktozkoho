#coding: utf-8
class Datanest::Privatization < ActiveRecord::Base
  include Datanest::Support::Import
  include Datanest::Support::ManuallyMappable

  csv            'privatizacia_predaje-dump.csv'
  before_create  :convert_financial_attributes, :empty_attributes_to_null,
                 :link_subject
  display_name   'Privatizácie'

  belongs_to :subject
end

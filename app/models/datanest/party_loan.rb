#coding: utf-8
class Datanest::PartyLoan < ActiveRecord::Base
  extend Datanest::Import
  extend Datanest::ManuallyMappable

  csv           'pozicky_stranam-dump.csv'
  before_create :convert_financial_attributes, :correct_party_names, :empty_attributes_to_null
  display_name  'Pôžičky stranám'

  def address
    "#{zip}, #{city}"
  end
end

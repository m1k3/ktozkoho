#coding: utf-8
class Datanest::CultureDotation < ActiveRecord::Base
  extend Datanest::Import
  extend Datanest::ManuallyMappable

  csv                         'dotacie_kultura-dump.csv'
  additional_currency_columns :budget, :dissaving
  before_create               :convert_financial_attributes, :empty_attributes_to_null,
                              :link_subject
  display_name                'Kultúrne dotácie'

  belongs_to :subject
end

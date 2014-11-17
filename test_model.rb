require 'active_record'
require 'elasticsearch/model'

class Vaga < ActiveRecord::Base
    include Elasticsearch::Model

    index_name "test-fts-vagas" # Elasticsearch index name
    document_type 'vaga'

    def pesquisa
      search(index: 'test-fts-vagas')
    end
end

Elasticsearch::Model.client = Elasticsearch::Client.new
p Vaga.new.pesquisa index: 'test-fts-vagas'

require 'elasticsearch'
require 'json'

client = Elasticsearch::Client.new
#
#client.cluster.health

#client.index index: 'my-index', type: 'my-document', id: 1, body: { title: 'lala', nome: 'Chris' }
#client.index index: 'my-index', type: 'my-document', id: 2, body: { title: 'Um titulo', nome: 'Egle' }
#
#client.index index: 'my-index', type: 'other-document', id: 3, body: { titulo: 'Um titulo 3', idade: 34 }
#client.indices.refresh index: 'my-index'
#
obj = client.search index: 'my-index', type: 'other-document'

p obj

obj['hits']['hits'].each do |arg|
  puts ">>>>>>>>>>>>>>>>?"
  p arg['_source']
  puts ">>>>>>>>>>>>>>>>?"
end

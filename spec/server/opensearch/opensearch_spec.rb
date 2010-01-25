#
#  Copyright (c) 2009 Caelum - www.caelum.com.br/opensource
#  All rights reserved.
# 
#  Licensed under the Apache License, Version 2.0 (the "License"); 
#  you may not use this file except in compliance with the License. 
#  You may obtain a copy of the License at 
#  
#   http://www.apache.org/licenses/LICENSE-2.0 
#  
#  Unless required by applicable law or agreed to in writing, software 
#  distributed under the License is distributed on an "AS IS" BASIS, 
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
#  See the License for the specific language governing permissions and 
#  limitations under the License. 
#

require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')
require 'restfulie/server/opensearch'

context Restfulie::OpenSearch::Description do
  
  it "should describe the open search" do
    expected = '<?xml version="1.0" encoding="UTF-8"?>
     <OpenSearchDescription xmlns="http://a9.com/-/spec/opensearch/1.1/">
       <ShortName>System search</ShortName>
       <Description>System search</Description>
       <Url type="application/atom+xml" 
            template="http://example.com/?q={searchTerms}&amp;pw={startPage?}"/>
     </OpenSearchDescription>'
    xml = Restfulie::OpenSearch::Description.new("System search").accepts("application/atom+xml")
    #     xml.should == expected
  end
  
end
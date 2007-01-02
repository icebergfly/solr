# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require File.dirname(__FILE__) + '/../test_helper'

class ConnectionTest < Test::Unit::TestCase
  def test_connection_initialize
    request = Solr::UpdateRequest.new("<commit/>")
    connection = Solr::Connection.new("http://localhost:8983")
    assert_equal("localhost", connection.url.host)
    assert_equal(8983, connection.url.port)
  end
end

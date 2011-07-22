# Copyright (c) 2009-2011 VMware, Inc.
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', '..', '..', 'base', 'lib')

require 'base/provisioner'
require 'insight_service/common'

class VCAP::Services::Insight::Provisioner < VCAP::Services::Base::Provisioner

  include VCAP::Services::Insight::Common

  def node_score(node)
    node['available_memory']
  end

end

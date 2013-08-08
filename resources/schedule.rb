# Author:: Scott Sanders (scott@jssjr.com)
# Copyright:: Copyright (c) 2013 Scott Sanders
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


def initialize(*args)
  super
  @action = :create
end

actions :create, :delete

attribute :schedule, :kind_of => String, :name_attribute => true

attribute :period, :kind_of => Integer
attribute :always_keep, :kind_of => Integer
attribute :after, :kind_of => String
attribute :before, :kind_of => String
attribute :implies, :kind_of => String

attribute :cookbook, :kind_of => String, :default => "tarsnap"

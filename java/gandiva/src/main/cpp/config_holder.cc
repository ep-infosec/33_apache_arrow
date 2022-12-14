// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements.  See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership.  The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License.  You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

#include <cstdint>

#include "config_holder.h"

namespace gandiva {
int64_t ConfigHolder::config_id_ = 1;

// map of configuration objects created so far
std::unordered_map<int64_t, std::shared_ptr<Configuration>>
    ConfigHolder::configuration_map_;

std::mutex ConfigHolder::g_mtx_;
}  // namespace gandiva

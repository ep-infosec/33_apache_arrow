# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

test_that("string vectors with only empty strings and nulls don't allocate a data buffer (ARROW-3693)", {
  a <- Array$create("")
  expect_equal(a$length(), 1L)

  buffers <- a$data()$buffers

  # No nulls
  expect_equal(buffers[[1]], NULL)

  # Offsets has 2 elements
  expect_equal(buffers[[2]]$size, 8L)

  # As per ARROW-2744, values buffer should preferably be non-null.
  expect_equal(buffers[[3]]$size, 0L)
  expect_equal(buffers[[3]]$capacity, 0L)
})

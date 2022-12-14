/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.arrow.plasma.exceptions;

/**
 * Thrown when attempting to place an object into the store for an ID that already exists.
 *
 * @deprecated Plasma is deprecated since 10.0.0. Plasma will not be released from Apache Arrow 12.0.0 or so.
 */
@Deprecated
public class DuplicateObjectException extends RuntimeException {

  public DuplicateObjectException(String objectId) {
    super("An object with ID " + objectId + " already exists in the plasma store.");
  }

  public DuplicateObjectException(String objectId, Throwable t) {
    super("An object with ID " + objectId + " already exists in the plasma store.", t);
  }
}

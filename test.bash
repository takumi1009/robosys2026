#!/bin/bash
# SPDX-FileCopyrightText: 2026 Komiya Takumi
# SPDX-License-Identifier: BSD-3-Clause

set -ex

echo "===== Test 1: 千葉県 ====="
echo "千葉県" | ./prefecture_checker

echo "===== Test 2: 大阪府 ====="
echo "大阪府" | ./prefecture_checker

echo "===== Test 3: 北海道 ====="
echo "北海道" | ./prefecture_checker

echo "===== Test 4: 架空県 ====="
! echo "架空県" | ./prefecture_checker

echo "===== End ====="

echo "All tests passed"

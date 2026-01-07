#!/bin/bash
# SPDX-FileCopyrightText: 2026 Komiya Takumi
# SPDX-License-Identifier: BSD-3-Clause

echo "千葉県" | ../prefecture_checker | grep -q "千葉市"
echo "大阪府" | ../prefecture_checker | grep -q "大阪市"
echo "北海道" | ../prefecture_checker | grep -q "札幌市"
echo "福岡県" | ../prefecture_checker | grep -q "福岡市"

if echo "架空県" | ../prefecture_checker >/dev/null 2>&1; then
  exit 1
fi

echo "All tests passed"


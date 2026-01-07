#!/bin/bash
# SPDX-FileCopyrightText: 2026 Komiya Takumi
# SPDX-License-Identifier: BSD-3-Clause

set -e

# 正常系
echo "千葉県" | ../prefecture_checker | grep -q "関東 千葉市"
echo "大阪府" | ../prefecture_checker | grep -q "近畿 大阪市"
echo "北海道" | ../prefecture_checker | grep -q "北海道 札幌市"
echo "福岡県" | ../prefecture_checker | grep -q "九州 福岡市"
echo "沖縄県" | ../prefecture_checker | grep -q "沖縄 那覇市"

# 異常系：存在しない県
if echo "架空県" | ../prefecture_checker >/dev/null 2>&1; then
  echo "Error: invalid prefecture was accepted"
  exit 1
fi

# 異常系：標準入力なし
if ../prefecture_checker >/dev/null 2>&1; then
  echo "Error: no stdin was accepted"
  exit 1
fi

echo "All tests passed"


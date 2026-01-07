#!/bin/bash
# SPDX-FileCopyrightText: 2026 Komiya Takumi
# SPDX-License-Identifier: BSD-3-Clause

set -e

echo "千葉県" | ../prefecture_checker > out1.txt
grep -q "関東 千葉市" out1.txt

echo "大阪府" | ../prefecture_checker > out2.txt
grep -q "近畿 大阪市" out2.txt

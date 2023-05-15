#!/bin/bash

set -eo pipefail

echo -e "\033[33m
______           _      ______               _ _      _   _____                          _      _
| ___ \         | |     | ___ \             | | |    | | |  ___|                        | |    | |
| |_/ / __ _ ___| |__   | |_/ /_ _ _ __ __ _| | | ___| | | |____  ____ _ _ __ ___  _ __ | | ___| |
| ___ \/ _\` / __| '_ \  |  __/ _\` | '__/ _\` | | |/ _ \ | |  __\ \/ / _\` | '_ \` _ \| '_ \| |/ _ \ |
| |_/ / (_| \__ \ | | | | | | (_| | | | (_| | | |  __/ | | |___>  < (_| | | | | | | |_) | |  __/_|
\____/ \__,_|___/_| |_| \_|  \__,_|_|  \__,_|_|_|\___|_| \____/_/\_\__,_|_| |_| |_| .__/|_|\___(_)
                                                                                  | |
                                                                                  |_|\033[0m"
echo -e "Yay! It all worked! 👍\n"

echo "BUILDKITE_PARALLEL_JOB: $BUILDKITE_PARALLEL_JOB"
echo "BUILDKITE_PARALLEL_JOB_COUNT: $BUILDKITE_PARALLEL_JOB_COUNT"

echo $BUILDKITE_BUILD_CHECKOUT_PATH
echo $BUILDKITE_BUILD_ID
echo $BUILDKITE_PIPELINE_NAME
echo $BUILDKITE_LABEL
echo $BUILDKITE_BRANCH
echo $BUILDKITE_COMMIT
echo $BUILDKITE_PULL_REQUEST
echo $BUILDKITE_PULL_REQUEST_BASE_BRANCH
echo $BUILDKITE_PARALLEL_JOB_COUNT

pytest test.py

#!/bin/bash

# Script to stop multiple EC2 instances using AWS CLI

# ===== Configuration =====
REGION="ap-south-1"  # Replace with your AWS region
INSTANCE_IDS=("i-05afb01e87c51fb39" "i-08a269d1945790aa2")

# ===== Script Logic =====
echo "🛑 Stopping EC2 instances in region: $REGION"

for INSTANCE_ID in "${INSTANCE_IDS[@]}"; do
    echo "Stopping instance: $INSTANCE_ID ..."
    aws ec2 stop-instances --instance-ids "$INSTANCE_ID" --region "$REGION" >/dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "✅ Successfully sent stop request for $INSTANCE_ID"
    else
        echo "❌ Failed to stop instance $INSTANCE_ID. Check your AWS CLI configuration."
    fi
done

echo "✅ All stop commands executed."

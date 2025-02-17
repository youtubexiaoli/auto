#!/bin/bash

# 鏄剧ず鑿滃崟骞舵彁绀鸿緭鍏?echo "璇烽€夋嫨瑕佹墽琛岀殑鎿嶄綔:"
echo "1. 瀹夎璇佷功"
echo "2. 瀹夎 3x-ui 闈㈡澘"

# 璇诲彇鐢ㄦ埛杈撳叆骞堕獙璇?read -p "璇疯緭鍏ユ暟瀛?1 鎴?2: " choice

if [ "$choice" == "1" ]; then
    echo "\n姝ｅ湪瀹夎璇佷功..."
    git clone https://github.com/slobys/SSL-Renewal.git /tmp/acme
    mv /tmp/acme/* /root
    echo "\n鎴愬姛瀹屾垚锛佽杩愯浠ヤ笅鑴氭湰锛?
    bash /root/acme_2.0.sh
elif [ "$choice" == "2" ]; then
    echo "\n姝ｅ湪瀹夎 3x-ui 闈㈡澘..."
    # 鑾峰彇鏈€鏂扮殑瀹夎鑴氭湰
    curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh | bash -
    exit 0  # 鎴愬姛瀹屾垚
else
    echo "鏃犳晥鐨勯€夋嫨锛岃杈撳叆 1 鎴?2."
    exit 1
fi

# 濡傛灉鏄敊璇€€鍑猴紝鏄剧ず閿欒淇℃伅
if [ $? -ne 0 ]; then
    echo "鎿嶄綔澶辫触銆傝妫€鏌ヨ緭鍏ユ槸鍚︽纭垨鑴氭湰鏄惁瀛樺湪闂銆?
    exit 1
fi

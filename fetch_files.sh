set -e

rm -f AllPrintings.json
wget https://mtgjson.com/api/v5/AllPrintings.json
rm -f SetList.json
wget https://mtgjson.com/api/v5/SetList.json

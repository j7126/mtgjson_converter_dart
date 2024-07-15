set -e

rm -f AllPrintings.json
curl -O https://mtgjson.com/api/v5/AllPrintings.json
rm -f SetList.json
curl -O https://mtgjson.com/api/v5/SetList.json

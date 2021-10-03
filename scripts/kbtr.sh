echo "frkbtr and arkbtr Install Script
by Sourav
Version 1.0
"

echo "Installing arkbtr"
wget -O /bin/arkbtr https://raw.githubusercontent.com/bthehacker/QuickScripts/main/programs/arabicKbTranslator &> /dev/null

echo "Installing frkbtr"
wget -O /bin/frkbtr https://raw.githubusercontent.com/bthehacker/QuickScripts/main/programs/frenchKbTranslator &> /dev/null

echo "Finishing Up"
chmod +x /bin/arkbtr /bin/frkbtr

echo "Done"

echo "Type arkbtr or frkbtr in the Terminal to Use this Program"

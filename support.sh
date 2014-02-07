
function show_support_info {
	echo "--------------------------------------------------"
	echo "It seems there was some problem, as written above?"
	echo ""
	echo "SUPPORT: for help, see https://wiki.debian.org/Mempo#contact"
	echo "check for common errors here: read FAQ: https://wiki.debian.org/SameKernel/#FAQ"
	echo "See #mempo on irc.oftc.net or freenode or irc2p - ask question, wait up to 24 hours, we will reply!"
	echo "also freenet on FMS boards: linux or mempo (remember to solve captchas) we reply in 1-3 days."
	echo "also http://mempo.org (planned for 2014-03)"
	echo "( write down all entire messages, last 20-50 lines of text, this will help to solve your issue )"
}

function exit_error() {
	show_support_info
	echo "Aborting."
	exit 1
}

function ask_quit() {
	echo ""
	echo "Due to above-mentioned problems, this script will probably not work fully correctly"
	echo "(e.g. will produce other checksums that rest of users has)."
	echo ""
	echo "Do you want to ignore this problem and try to continue anyway? y/N?"
	read yn
	if [[ $yn == "y" ]] ; then echo ; echo "*** ignoring this problem, but the resulting checksums will be probably not correct ***" ; echo ; 
	else exit_error ; fi
}


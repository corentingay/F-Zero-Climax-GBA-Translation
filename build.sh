rom=${1:-"rom/input.gba"}
out_rom=${2:-"rom/output.gba"}
diff=${3:-"rom/patch.diff"}

sources=(\
	"asm/misc.asm"\
	"asm/variableWidthFont.asm"\
	"asm/script/story/story.asm"\
	"asm/script/profiles/profiles.asm"\
	"asm/script/menus/menus.asm"\
	)

# Checks that the rom is the correct one.
if [ ! -r "$rom" ] ; then
	echo "ROM is not present or is not readable"
	exit 1
else
	# This is the name of the ROM followed by the CRC32.
	is_fzero_climax_jp=$(strings $rom | grep F-ZEROCLIMAXBFTJ01)
	if [ $is_fzero_climax_jp = "" ] ; then
		echo "ROM is not F-ZERO Climax"
		exit 1
	fi
fi

# Checks that the armips assembler is in the path.
armips=$(which armips)
if [ ! -x "$armips" ] ; then
   echo "ARMIPS compiler is missing, please install it and add it to your PATH."
   exit 1
fi

# Cleanup the output rom.
rm $out_rom

# Copy given gba file into the output rom read by the .asm files.
cp $rom $out_rom

if [ ! -w "$out_rom" ] ; then
	echo "Copied ROM is not present or is not writable"
	exit 1
else
	armips -erroronwarning asm/script/menus/menus.asm
	for asm_file in "${sources[@]}"
	do
		echo "Compiling assembly file : $asm_file"
		armips -erroronwarning $asm_file
	done
fi

# Generate a diff that can be applied to an existing ROM.
bsdiff $rom $out_rom $diff

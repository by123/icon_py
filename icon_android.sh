# prepare
ROOT_DIR=$(pwd)

#check file exist
#设置1024尺寸的原图片路径
SOURCE_FILE="${ROOT_DIR}/Desktop/icon_1024x1024.png"
echo $SOURCE_FILE
if [[ ! -e ${SOURCE_FILE} ]];then
echo"文件不存在"
exit1
fi
#设置自动切割生成制定尺寸图片的位置
DEST_DIR="${ROOT_DIR}/Desktop/AppIcon_Android"
# #如果目录有图片先清空
# if[[ -d ${DEST_DIR} ]];then
# rm -rf dir ${DEST_DIR}
# fi
mkdir -p "${DEST_DIR}"
#图片自定义的名称
Image_NAME=("icon_16x16.png" "icon_96x96.png" "icon_144x144.png" "icon_192x192.png" "icon_48x48.png" "icon_72x72.png" "icon_135x135.png" "icon_180x180.png" "icon_168x168.png" "icon_576x576.png" "icon_512x512.png" "icon_672x672.png" "icon_216x216.png" "icon_200x200.png")       
#图片对应的尺寸 
Image_SIZE=("16" "96" "144" "192" "48" "72" "135" "180" "168" "576" "512" "672" "216" "200")


#sips starting
cp "${SOURCE_FILE}" "${DEST_DIR}"
for((i=0; i<${#Image_SIZE[@]} ;i++)); do
size=${Image_SIZE[i]}
sips -Z ${size} "${SOURCE_FILE}" --out "${DEST_DIR}/${Image_NAME[i]}"
done
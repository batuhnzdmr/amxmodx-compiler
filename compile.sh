test -e sma || mkdir sma
test -e amxx || mkdir amxx

plugin_count=$(find sma/ -maxdepth 1 -type f -name "*.sma" | wc -l)

if [ "$plugin_count" -eq 0 ]; then
    echo "-------------------------------------------------------------------------------------------------------------"
    echo "Hostibu | UYARI: 'sma' klasöründe derlenecek herhangi bir eklenti (.sma) bulunamadı."
    echo "-------------------------------------------------------------------------------------------------------------"
    tail -f /dev/null
fi

echo "Hostibu | Toplam $plugin_count adet eklenti derlenmek üzere sıraya eklendi."

for sourcefile in sma/*.sma
do
    [ -f "$sourcefile" ] || continue

    base_filename=$(basename "$sourcefile")
    amxxfile="${base_filename%.sma}.amxx"

    echo "-------------------------------------------------------------------------------------------------------------"
    echo "Hostibu | '$base_filename' adlı eklenti '$amxxfile' olarak derleniyor..."
    echo "-------------------------------------------------------------------------------------------------------------"

    ./amxxpc "$sourcefile" -o"amxx/$amxxfile"
done

echo "-------------------------------------------------------------------------------------------------------------"
echo "Hostibu | Tüm eklentiler başarıyla derlendi. Eklentilerinizi '/amxx' klasörü içerisinden alabilirsiniz."
echo "-------------------------------------------------------------------------------------------------------------"
tail -f /dev/null
# Minimalistic template engine for Bitbucket static websites
# Assemble header+content+footer

for PAGE in `ls *.fragment.html`
do
  NEW_PAGE=`echo $PAGE | sed -e "s/fragment.//"`
  echo "Generating $NEW_PAGE"
  cat header.html $PAGE footer.html > $NEW_PAGE
done

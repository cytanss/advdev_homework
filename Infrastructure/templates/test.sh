while : ; do
  echo "Checking if Nexus is Ready..."
  oc get pod -n tcy-nexus|grep 'nexus3\-'|grep -v deploy|grep "1/1"
  [[ "$?" == "1" ]] || break
  echo "$?"
  echo "...no. Sleeping 10 seconds."
  sleep 10
done

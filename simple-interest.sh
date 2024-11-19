
echo "Simple Interest calculation"
echo "-----------------------------"
read -p "Introduce initial capital(P): " capital
read -p "Introduce anual interest (%) (r): " interest
read -p "Introduce time in years (t): " time


if ! [[ "$capital" =~ ^[0-9]+([.][0-9]+)?$ ]] || 

! [[ "$interest" =~ ^[0-9]+([.][0-9]+)?$ ]] || 

! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
echo "Error: Please introduce valid numerical values."
exit 1
fi

interest_yax=$(echo "$capital * $interest / 100 * $time" | bc -l)

echo "-----------------------------"
echo "InitialCapitall (P): $capital"
echo "Anual Interest (r): $Interest%"
echo "Time (t): $Time in years"
echo "Simple interest calculated(I): $interest"
echo "-----------------------------"
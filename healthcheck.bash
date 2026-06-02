#!/bin/bash

press_enter ()
{
   read -p " Press enter to continue:" 
   clear

}

selection=
until [ "$selection" = "0" ]; do
  echo "
  Program menu
  1 - Display free disk space
  2 - Display disk usage
  3 - Display directory 
  4 - Display free memory
  5 - Display CPU usage
  6 - Activer service 
  0 - exit program
"
 read -p "Enter selection : " selection
 case $selection in
   1 ) df; press_enter ;;
   2 ) du; press_enter ;;
   3 ) ls; press_enter ;;
   4 ) free; press_enter ;;
   5 ) top -bn1 | grep "Cpu(s)"; press_enter ;;
   6 ) systemctl list-units --type=service --state=running --no-pager | grep running;read -p "Enter service name of service to find:" service ; systemctl status $service --no-pager -l; press_enter;;
   * ) echo "please enter 1,2,3 or 4" ; press_enter ;;
 esac
done

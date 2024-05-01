#!/bin/bash
list_processes() {
    ps aux
}
process_info() {
    read -p "Enter process ID (PID): " pid
    ps -p $pid -o pid,user,pcpu,pmem,cmd
}
global_priority() {
    read -p "Enter process ID (PID): " pid
    ps -o pri,pid -p $pid
}
change_priority() {
    read -p "Enter process ID (PID): " pid
    read -p "Enter new priority value (default: 10): " priority
    priority=${priority:-10}
    renice $priority -p $pid
}

while true; do
echo "Menu Options:"
echo "1. List Processes"
echo "2. Process Info"
echo "3. Global Priority"
echo "4. Change Priority"
echo "5. Exit"
read -p "Enter your choice: " choice

case $choice in
    1) list_processes ;;
    2) process_info ;;
    3) global_priority ;;
    4) change_priority ;;
    5) echo "Exiting..."; exit ;;
    *) echo "Invalid choice. Please enter a valid option." ;;
esac
done

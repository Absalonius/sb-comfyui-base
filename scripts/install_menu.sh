#!/bin/bash

# Function to display the menu
show_menu() {
    clear
    echo "=== Menu ==="
    echo "1. Install controlnet"
    echo "2. IpAdapter"
    echo "3. flux-schnell models"
    echo "4. real-dream model"
    echo "5. Exit"
    echo "============"
}

# Function to run the selected script
run_script() {
    case $1 in
        1)
            ./custom_nodes/controlnet.sh
            ;;
        2)
            ./custom_nodes/ipadapter.sh
            ;;
        3)
            ./models/flux-schnell.sh
            ;;
        4)
            ./models/real-dream.sh
            ;;
        5)
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
}

# Main program
while true; do
    show_menu
    read -p "Enter your choice: " choice
    run_script $choice
    read -p "Press enter to continue..."
done
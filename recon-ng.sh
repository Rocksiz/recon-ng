#!/bin/bash

# Function to check if recon-ng modules are installed
check_module_installation() {
    echo "Checking if recon-ng modules are installed..."
    echo "marketplace info" | recon-ng | grep "No modules installed"

    if [ $? -eq 0 ]; then
        echo "recon-ng modules are not installed."
        read -p "Would you like to install all the recon-ng modules? (y/n): " choice
        case $choice in
            y|Y) echo "Installing recon-ng modules..."
                 echo "marketplace install all" | recon-ng | sed -n -e '/^[^[]/p'
                 ;;
            *) echo "Exiting..."; exit ;;
        esac
    else
        echo "recon-ng modules are already installed."
    fi
}

# Function for discovery/info disclosure - cache snoop
discovery_cache_snoop() {
    read -p "Enter the target domain or URL: " target
    echo "Running Discovery/Info Disclosure - Cache Snoop on $target..."
    echo "discovery/info_disclosure/cache_snoop -t $target" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for discovery/info disclosure - interesting files
discovery_interesting_files() {
    read -p "Enter the target domain or URL: " target
    echo "Running Discovery/Info Disclosure - Interesting Files on $target..."
    echo "discovery/info_disclosure/interesting_files -t $target" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for exploitation/injection - command injector
exploit_command_injector() {
    read -p "Enter the target URL: " target
    echo "Running Exploitation/Injection - Command Injector on $target..."
    echo "exploitation/injection/command_injector -u $target" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for exploitation/injection - XPath bruter
exploit_xpath_bruter() {
    read -p "Enter the target URL: " target
    echo "Running Exploitation/Injection - XPath Bruter on $target..."
    echo "exploitation/injection/xpath_bruter -u $target" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for import - CSV file
import_csv_file() {
    read -p "Enter the path to the CSV file: " path
    echo "Running Import - CSV File: $path..."
    echo "import/csv_file -i $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for import - List
import_list() {
    read -p "Enter the path to the list file: " path
    echo "Running Import - List: $path..."
    echo "import/list -i $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for import - Masscan
import_masscan() {
    read -p "Enter the path to the Masscan XML output file: " path
    echo "Running Import - Masscan: $path..."
    echo "import/masscan -f $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for import - Nmap
import_nmap() {
    read -p "Enter the path to the Nmap XML output file: " path
    echo "Running Import - Nmap: $path..."
    echo "import/nmap -f $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-contacts - bing_linkedin_cache
recon_bing_linkedin_cache() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Contacts - bing_linkedin_cache for $company..."
    echo "recon/companies-contacts/bing_linkedin_cache -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-contacts - censys_email_address
recon_censys_email_address() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Contacts - censys_email_address for $company..."
    echo "recon/companies-contacts/censys_email_address -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-contacts - pen
recon_companies_contacts_pen() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Contacts - pen for $company..."
    echo "recon/companies-contacts/pen -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-domains - censys_subdomains
recon_censys_subdomains() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Domains - censys_subdomains for $company..."
    echo "recon/companies-domains/censys_subdomains -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-domains - pen
recon_companies_domains_pen() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Domains - pen for $company..."
    echo "recon/companies-domains/pen -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-domains - viewdns_reverse_whois
recon_viewdns_reverse_whois() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Domains - viewdns_reverse_whois for $company..."
    echo "recon/companies-domains/viewdns_reverse_whois -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-domains - whoxy_dns
recon_whoxy_dns() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Domains - whoxy_dns for $company..."
    echo "recon/companies-domains/whoxy_dns -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-hosts - censys_org
recon_censys_org() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Hosts - censys_org for $company..."
    echo "recon/companies-hosts/censys_org -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-hosts - censys_tls_subjects
recon_censys_tls_subjects() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Hosts - censys_tls_subjects for $company..."
    echo "recon/companies-hosts/censys_tls_subjects -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-multi - github_miner
recon_github_miner() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Multi - github_miner for $company..."
    echo "recon/companies-multi/github_miner -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-multi - shodan_org
recon_shodan_org() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Multi - shodan_org for $company..."
    echo "recon/companies-multi/shodan_org -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/companies-multi - whois_miner
recon_whois_miner() {
    read -p "Enter the company name: " company
    echo "Running Recon/Companies-Multi - whois_miner for $company..."
    echo "recon/companies-multi/whois_miner -c $company" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/contacts-contacts - abc
recon_abc() {
    read -p "Enter the contact name: " contact
    echo "Running Recon/Contacts-Contacts - abc for $contact..."
    echo "recon/contacts-contacts/abc -c $contact" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/contacts-contacts - mailtester
recon_mailtester() {
    read -p "Enter the contact email: " email
    echo "Running Recon/Contacts-Contacts - mailtester for $email..."
    echo "recon/contacts-contacts/mailtester -e $email" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/contacts-contacts - mangle
recon_mangle() {
    read -p "Enter the contact name: " contact
    echo "Running Recon/Contacts-Contacts - mangle for $contact..."
    echo "recon/contacts-contacts/mangle -c $contact" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/contacts-contacts - unmangle
recon_unmangle() {
    read -p "Enter the contact name: " contact
    echo "Running Recon/Contacts-Contacts - unmangle for $contact..."
    echo "recon/contacts-contacts/unmangle -c $contact" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/contacts-credentials - hibp_breach
recon_hibp_breach() {
    read -p "Enter the contact email: " email
    echo "Running Recon/Contacts-Credentials - hibp_breach for $email..."
    echo "recon/contacts-credentials/hibp_breach -e $email" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for recon/contacts-credentials - hibp_paste
recon_hibp_paste() {
    read -p "Enter the contact email: " email
    echo "Running Recon/Contacts-Credentials - hibp_paste for $email..."
    echo "recon/contacts-credentials/hibp_paste -e $email" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for reporting/csv
reporting_csv() {
    read -p "Enter the path to save the CSV report: " path
    echo "Running Reporting - CSV report: $path..."
    echo "reporting/csv -f $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for reporting/html
reporting_html() {
    read -p "Enter the path to save the HTML report: " path
    echo "Running Reporting - HTML report: $path..."
    echo "reporting/html -f $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for reporting/json
reporting_json() {
    read -p "Enter the path to save the JSON report: " path
    echo "Running Reporting - JSON report: $path..."
    echo "reporting/json -f $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for reporting/markdown
reporting_markdown() {
    read -p "Enter the path to save the Markdown report: " path
    echo "Running Reporting - Markdown report: $path..."
    echo "reporting/markdown -f $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for reporting/txt
reporting_txt() {
    read -p "Enter the path to save the TXT report: " path
    echo "Running Reporting - TXT report: $path..."
    echo "reporting/txt -f $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function for reporting/xlsx
reporting_xlsx() {
    read -p "Enter the path to save the XLSX report: " path
    echo "Running Reporting - XLSX report: $path..."
    echo "reporting/xlsx -f $path" | recon-ng | sed -n -e '/^[^[]/p'
}

# Function to display the menu
display_menu() {
    echo ""
    echo "=== Recon-ng Module Menu ==="
    echo "1. Check recon-ng module installation"
    echo "2. Discovery/Info Disclosure - Cache Snoop"
    echo "3. Discovery/Info Disclosure - Interesting Files"
    echo "4. Exploitation/Injection - Command Injector"
    echo "5. Exploitation/Injection - XPath Bruter"
    echo "6. Import - CSV File"
    echo "7. Import - List"
    echo "8. Import - Masscan"
    echo "9. Import - Nmap"
    echo "10. Recon/Companies-Contacts - bing_linkedin_cache"
    echo "11. Recon/Companies-Contacts - censys_email_address"
    echo "12. Recon/Companies-Contacts - pen"
    echo "13. Recon/Companies-Domains - censys_subdomains"
    echo "14. Recon/Companies-Domains - pen"
    echo "15. Recon/Companies-Domains - viewdns_reverse_whois"
    echo "16. Recon/Companies-Domains - whoxy_dns"
    echo "17. Recon/Companies-Hosts - censys_org"
    echo "18. Recon/Companies-Hosts - censys_tls_subjects"
    echo "19. Recon/Companies-Multi - github_miner"
    echo "20. Recon/Companies-Multi - shodan_org"
    echo "21. Recon/Companies-Multi - whois_miner"
    echo "22. Recon/Contacts-Contacts - abc"
    echo "23. Recon/Contacts-Contacts - mailtester"
    echo "24. Recon/Contacts-Contacts - mangle"
    echo "25. Recon/Contacts-Contacts - unmangle"
    echo "26. Recon/Contacts-Credentials - hibp_breach"
    echo "27. Recon/Contacts-Credentials - hibp_paste"
    echo "28. Reporting - CSV"
    echo "29. Reporting - HTML"
    echo "30. Reporting - JSON"
    echo "31. Reporting - Markdown"
    echo "32. Reporting - TXT"
    echo "33. Reporting - XLSX"
    echo "0. Exit"
    echo "============================"
}

# Main script logic
while true; do
    display_menu
    read -p "Enter your choice (0-33): " choice
    case $choice in
        1) check_module_installation ;;
        2) discovery_cache_snoop ;;
        3) discovery_interesting_files ;;
        4) exploit_command_injector ;;
        5) exploit_xpath_bruter ;;
        6) import_csv_file ;;
        7) import_list ;;
        8) import_masscan ;;
        9) import_nmap ;;
        10) recon_bing_linkedin_cache ;;
        11) recon_censys_email_address ;;
        12) recon_companies_contacts_pen ;;
        13) recon_censys_subdomains ;;
        14) recon_companies_domains_pen ;;
        15) recon_viewdns_reverse_whois ;;
        16) recon_whoxy_dns ;;
        17) recon_censys_org ;;
        18) recon_censys_tls_subjects ;;
        19) recon_github_miner ;;
        20) recon_shodan_org ;;
        21) recon_whois_miner ;;
        22) recon_abc ;;
        23) recon_mailtester ;;
        24) recon_mangle ;;
        25) recon_unmangle ;;
        26) recon_hibp_breach ;;
        27) recon_hibp_paste ;;
        28) reporting_csv ;;
        29) reporting_html ;;
        30) reporting_json ;;
        31) reporting_markdown ;;
        32) reporting_txt ;;
        33) reporting_xlsx ;;
        0) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please enter a number from 0 to 33." ;;
    esac
done

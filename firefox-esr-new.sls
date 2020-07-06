{% set versions = {
'68':['10.0', '9.0', '8.0', '7.0', '6.1', '6.0', '5.0', '4.2', '4.1', '4.0', '3.0', '2.0', '1.0', '0'], 
'60':['9.0', '8.0', '7.2', '7.1', '7.0', '6.3', '6.2', '6.1', '6.0', '5.2', '5.1', '5.0', '4.0', '3.0', '2.2', '2.1', '2.0', '1.0', '0.2', '0.1', '0'], 
'52':['9.0', '8.1', '8.0', '7.4', '7.3', '7.2', '7.1', '7.0', '6.0', '5.3', '5.2', '5.0', '4.1', '4.0', '3.0', '2.1', '2.0', '1.2', '1.1', '1.0', '0.2', '0.1', '0'], 
'45':['9.0', '8.0', '7.0', '6.0', '5.1', '5.0', '4.0', '3.0', '2.0', '1.1', '1.0', '0.2', '0.1', '0'] %}
firefox-esr_x64:
  {% for major, subversions in versions.items() %}
  {% for minor in subversions %}
    '{{major}}.{{minor}}':
      full_name: 'Mozilla Firefox {{major}}.{{minor}} ESR (x64 en-US)'
      installer: 'https://download-installer.cdn.mozilla.net/pub/firefox/releases/{{major}}.{{minor}}esr/win64/en-US/Firefox%20Setup%20{{major}}.{{minor}}esr.exe'
      install_flags: '/s'
      uninstaller: '%ProgramFiles%\Mozilla Firefox\uninstall\helper.exe'
      uninstall_flags: '/S'
      msiexec: False
      locale: en_US
      reboot: False
  {% endfor %}
  {% endfor %}

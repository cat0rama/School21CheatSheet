# Scripts

## clear_cache.sh
Скрипт для очистки места на маке.

Исвользуйте это для автоматического обновления.
```bash
    #!/bin/bash
    curl -sL "https://raw.githubusercontent.com/Retr0Wawe/School21-CheatSheet/main/scripts/clear_cache.sh" | tr -d '\015' | bash
```
Или допишите это в ~/.zshrc
```bash
alias clear_space="curl -sL "https://raw.githubusercontent.com/Retr0Wawe/School21-CheatSheet/main/scripts/clear_cache.sh" | tr -d '\015' | bash"
```

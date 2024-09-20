# ggpwx-check-hht

## Description
ggpwx-check-hht is a QBCore script that provides notifications to players when their health, hunger, or thirst drops below a certain threshold. This script helps players stay aware of their health and needs in the game.

## Features
- Automatic notifications when health, hunger, or thirst is low.
- Supports multiple notification methods: QBCore, okokNotify, Mythic Notify, and custom notification systems.
- Easily customizable through configuration files.

## Installation
1. **Download the Script**:
   - Copy or download all the `ggpwx-check-hht` script files.

2. **Place in Resource Folder**:
   - Move the `ggpwx-check-hht` folder into the `resources` folder of your FiveM server.

3. **Edit `fxmanifest.lua`**:
   - Ensure that `fxmanifest.lua` is within the `ggpwx-check-hht` folder and has been properly configured.

4. **Register the Resource**:
   - Add the following line to your `server.cfg`:
     ```
     ensure ggpwx-check-hht
     ```

5. **Configuration**:
   - Open the `config.lua` file and adjust the notification settings to suit your needs.
   - Select the desired notification type by changing the `Config.NotificationType` value.

## Usage
- The script will run automatically once installed.
- Notifications will appear automatically if the player’s health, hunger, or thirst falls below the thresholds set in `config.lua`.

## Join Discord
For further support or to discuss this script, please join our Discord:
[Join Discord](https://discord.gg/syxppyr8W6)

## Contact
For questions or feedback, you can reach out to me via Discord or relevant forums.

---

Thank you for using ggpwx-check-hht! We hope this script enhances your gameplay experience.

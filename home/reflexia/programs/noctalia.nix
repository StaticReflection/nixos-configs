{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;
    settings = {
      settingsVersion = 18;
      setupCompleted = true; # 是否完成初始设置
      bar = {
        position = "top"; # 位置
        backgroundOpacity = 0.8; # 背景不透明度
        monitors = [ ]; # 显示器列表，空为所有
        density = "comfortable"; # 密度
        showCapsule = true; # 显示各部件背景(胶囊?)
        floating = true; # 悬浮(不贴屏幕边)
        marginVertical = 0.25; # 垂直边距
        marginHorizontal = 0.25; # 水平边距
        outerCorners = false; # 外侧圆角
        exclusive = false; # 独占栏空间
        widgets = {
          left = [
            {
              id = "ControlCenter"; # 控制中心
            }
            {
              id = "Workspace"; # 工作区
            }
            {
              id = "ScreenRecorder"; # 录屏
            }
            {
              id = "Battery"; # 电池
            }
            {
              id = "Bluetooth"; # 蓝牙
            }
            {
              id = "Brightness"; # 亮度
            }
            {
              id = "Volume"; # 音量
            }
          ];
          center = [
            {
              id = "Clock";
            }
          ];
          right = [
            {
              id = "ActiveWindow"; # 活动窗口
            }
            {
              id = "Tray"; # 后台应用
            }
            {
              id = "MediaMini"; # 媒体控制
            }
            {
              id = "NotificationHistory"; # 通知历史
            }
            {
              id = "SystemMonitor"; # 系统监视器
            }
          ];
        };
      };
      general = {
        avatarImage = ""; # 头像
        dimDesktop = true; # 打开设置之类的面板桌面变暗
        showScreenCorners = false; # 显示屏幕四周圆角
        forceBlackScreenCorners = false; # 强制显示黑色的屏幕圆角
        scaleRatio = 1; # 缩放比例
        radiusRatio = 1; # 圆角比例
        screenRadiusRatio = 1; # 屏幕圆角比例
        animationSpeed = 1; # 动画速度
        animationDisabled = false; # 禁用动画
        compactLockScreen = false; # 锁屏界面紧凑模式
        lockOnSuspend = true; # 锁屏时挂起
        enableShadows = true; # 启用阴影
        shadowDirection = "bottom_right"; # 阴影方向
        shadowOffsetX = 2; # 阴影X偏移
        shadowOffsetY = 3; # 阴影Y偏移
        language = ""; # 语言，空为系统默认
      };
      ui = {
        fontDefault = "Noto Sans CJK SC"; # 默认字体
        fontFixed = "JetBrainsMono Nerd Font"; # 等宽字体
        fontDefaultScale = 1; # 默认字体缩放
        fontFixedScale = 1; # 等宽字体缩放
        tooltipsEnabled = true;
        panelsAttachedToBar = true; # 面板附着在任务栏 (?
        panelsOverlayLayer = false; # 保持面板和栏在顶部
      };
      location = {
        name = "Shanghai";
        weatherEnabled = true; # 启用天气
        useFahrenheit = false; # 使用华氏度
        use12hourFormat = false; # 使用12小时制
        showWeekNumberInCalendar = false; # 日历显示周数
        showCalendarEvents = true; # 日历显示事件
        showCalendarWeather = true; # 日历显示天气
        analogClockInCalendar = false; # 日历显示模拟时钟 (?
        firstDayOfWeek = -1; # 一周的第一天，-1为系统默认
      };
      screenRecorder = {
        directory = "";
        frameRate = 60;
        audioCodec = "opus";
        videoCodec = "h264";
        quality = "very_high";
        colorRange = "limited";
        showCursor = true;
        audioSource = "default_output";
        videoSource = "portal";
      };
      wallpaper = {
        enabled = true;
        overviewEnabled = false; # 模糊背景
        directory = "/home/reflexia/Pictures/Wallpapers/";
        enableMultiMonitorDirectories = false;
        recursiveSearch = false;
        setWallpaperOnAllMonitors = true;
        defaultWallpaper = "/home/reflexia/Pictures/Wallpapers/98646512_p0.jpg";
        fillMode = "crop";
        fillColor = "#000000";
        randomEnabled = false;
        randomIntervalSec = 300;
        transitionDuration = 1500;
        transitionType = "random";
        transitionEdgeSmoothness = 0.05;
        monitors = [ ];
        panelPosition = "follow_bar";
      };
      appLauncher = {
        enableClipboardHistory = false;
        position = "center";
        backgroundOpacity = 1;
        pinnedExecs = [ ];
        useApp2Unit = false;
        sortByMostUsed = true;
        terminalCommand = "xterm -e";
        customLaunchPrefixEnabled = false;
        customLaunchPrefix = "";
      };
      controlCenter = {
        position = "close_to_bar_button";
        shortcuts = {
          left = [
            {
              id = "WiFi";
            }
            {
              id = "Bluetooth";
            }
            {
              id = "ScreenRecorder";
            }
            {
              id = "WallpaperSelector";
            }
          ];
          right = [
            {
              id = "Notifications";
            }
            {
              id = "PowerProfile";
            }
            {
              id = "KeepAwake";
            }
            {
              id = "NightLight";
            }
          ];
        };
        cards = [
          {
            enabled = true;
            id = "profile-card";
          }
          {
            enabled = true;
            id = "shortcuts-card";
          }
          {
            enabled = true;
            id = "audio-card";
          }
          {
            enabled = true;
            id = "weather-card";
          }
          {
            enabled = true;
            id = "media-sysmon-card";
          }
        ];
      };
      dock = {
        enabled = true;
        displayMode = "always_visible";
        backgroundOpacity = 1;
        floatingRatio = 1;
        size = 1;
        onlySameOutput = true;
        monitors = [ ];
        pinnedApps = [ ];
        colorizeIcons = false;
      };
      network = {
        wifiEnabled = true;
      };
      notifications = {
        doNotDisturb = false;
        monitors = [ ];
        location = "top_right";
        overlayLayer = true;
        backgroundOpacity = 1;
        respectExpireTimeout = false;
        lowUrgencyDuration = 3;
        normalUrgencyDuration = 8;
        criticalUrgencyDuration = 15;
      };
      osd = {
        enabled = true;
        location = "top_right";
        monitors = [ ];
        autoHideMs = 2000;
        overlayLayer = true;
      };
      audio = {
        volumeStep = 5;
        volumeOverdrive = false;
        cavaFrameRate = 60;
        visualizerType = "linear";
        mprisBlacklist = [ ];
        preferredPlayer = "";
      };
      brightness = {
        brightnessStep = 5;
        enforceMinimum = true;
        enableDdcSupport = false;
      };
      colorSchemes = {
        useWallpaperColors = true;
        predefinedScheme = "Noctalia (default)";
        darkMode = true;
        schedulingMode = "off";
        manualSunrise = "06:30";
        manualSunset = "18:30";
        matugenSchemeType = "scheme-fruit-salad";
        generateTemplatesForPredefined = true;
      };
      templates = {
        gtk = false;
        qt = false;
        kcolorscheme = false;
        alacritty = false;
        kitty = false;
        ghostty = false;
        foot = false;
        wezterm = false;
        fuzzel = false;
        discord = false;
        discord_vesktop = false;
        discord_webcord = false;
        discord_armcord = false;
        discord_equibop = false;
        discord_lightcord = false;
        discord_dorion = false;
        pywalfox = false;
        vicinae = false;
        walker = false;
        code = false;
        enableUserTemplates = false;
      };
      nightLight = {
        enabled = false;
        forced = false;
        autoSchedule = true;
        nightTemp = "4000";
        dayTemp = "6500";
        manualSunrise = "06:30";
        manualSunset = "18:30";
      };
      hooks = {
        enabled = false;
        wallpaperChange = "";
        darkModeChange = "";
      };
      battery = {
        chargingMode = 0;
      };
    };
  };
}

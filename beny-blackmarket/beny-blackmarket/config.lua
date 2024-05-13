Config = {}

Config.EntryCoords = vector4(1088.6106, -3187.5901, -39.9935, 184.6621) -- coordy gdzie gracz sie respi w black market
Config.EntryTarget = {
    coords = vec3(798.5, -2988.75, 6.1),
	size = vec3(0.8, 2.7, 2.3),
	rotation = 0.0,
}
Config.EntryItem = "human_pass" -- item potrzebny do wejścia

Config.LeaveCoords = vector4(797.5865, -2988.6060, 6.0209, 87.4190) -- coordy gdzie gracz jak wyjdzie z black marketu
Config.LeaveTarget = {
	coords = vec3(1088.7, -3187.05, -39.0),
	size = vec3(1.5, 0.5, 2.8),
	rotation = 0.0,
}

Config.BuyItems = {
    {
        coords = vec3(1102.85, -3192.5, -39.0),
        size = vec3(2.0, 2, 2.2),
        rotation = 0.0,
        options = {
            {
                label = "KUP APTECZKĘ",
                price = 50000,
                items  = {
                    {count = 1, item = "medikit"}
                }
            },
            {
                label = "KUP RADIO",
                count = 1,
                price = 50000,
                items  = {
                    {count = 1, item = "radio"}
                }
            },
            {
                label = "KUP HAK",
                price = 50000,
                items  = {
                    {count = 1, item = "police_hook"}
                }
            },
        }
    },

    {
        coords = vec3(1093.55, -3192.3, -39.0),
        size = vec3(2.6, 1.0, 2.0),
        rotation = 0.0,
        options = {
            {
                label = "KUP RPG",
                price = 45000000,
                items  = {
                    {count = 1, item = "WEAPON_RPG"},
                    {count = 5, item = "ammo-rocket"}
                }
            },
        }
    },

    {
        coords = vec3(1096.3, -3192.2, -39.0),
        size = vec3(2.6, 1.0, 2.0),
        rotation = 0.0,
        options = {
            {
                label = "KUP MINIGUNA",
                price = 100000000,
                items  = {
                    {count = 1, item = "WEAPON_MINIGUN"},
                    {count = 100, item = "ammo-rifle2"}
                }
            },
        }
    },

    {
        coords = vec3(1086.25, -3198.85, -39.25),
        size = vec3(1.0, 2.25, 1.35),
        rotation = 0.0,
        options = {
            {
                label = "KUP AMUNICJE UZI",
                price = 55000,
                items  = {
                    {count = 100, item = "ammo-45"},
                }
            },
        }
    },

    {
        coords = vec3(1086.25, -3196.85, -39.0),
        size = vec3(1.0, 1.85, 1.3),
        rotation = 0.0,
        options = {
            {
                label = "KUP AMUNICJE AK",
                price = 55000,
                items  = {
                    {count = 100, item = "ammo-rifle2"},
                }
            },
        }
    },

    {
        coords = vec3(1086.3, -3194.6, -39.2),
        size = vec3(0.8, 2.05, 1.5),
        rotation = 0.0,
        options = {
            {
                label = "KUP AK",
                price = 650000,
                items  = {
                    {count = 1, item = "WEAPON_ASSAULTRIFLE"},
                }
            },
            {
                label = "KUP UZI",
                price = 650000,
                items  = {
                    {count = 1, item = "WEAPON_MICROSMG"},
                }
            },
        }
    },

    {
        coords = vec3(1102.25, -3199.75, -39.0),
        size = vec3(3.0, 1.3, 3.7),
        rotation = 0.0,
        options = {
            {
                label = "KUP BOMBĘ PRZYLEPNĄ",
                price = 650000,
                items  = {
                    {count = 1, item = "WEAPON_STICKYBOMB"},
                }
            },
        }
    },
}
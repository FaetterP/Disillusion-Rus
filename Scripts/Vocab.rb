#==============================================================================
# ** Vocab
#------------------------------------------------------------------------------
#  This module defines terms and messages. It defines some data as constant
# variables. Terms in the database are obtained from $data_system.
#==============================================================================

module Vocab

  # Магазин
  ShopBuy         = "Купить"
  ShopSell        = "Продать"
  ShopCancel      = "Отмена"
  Possession      = "У вас есть"

  # Экран статусов
  ExpTotal        = "Текущий Опыт"
  ExpNext         = "До след. ур."

  # Сохранение/загрузка
  SaveMessage     = "В какой файл сохранить?"
  LoadMessage     = "Какой файл загрузить?"
  File            = "Файл"

  # Отображается при наличии нескольких участников
  PartyName       = "%s's Party"

  # Обычные сообщения во время боя
  Emerge          = "Появляется %s!"
  Preemptive      = "%s одерживает верх!"
  Surprise        = "%s был удивлён!"
  EscapeStart     = "%s начал убегать!"
  EscapeFailure   = "Однако сбежать не удалось!"

  # Завершение боя
  Victory         = "%s победил!"
  Defeat          = "%s был побежден."
  ObtainExp       = "Получено %s опыта!"
  ObtainGold      = "Получено %s \\G!"
  ObtainItem      = "Найдено: %s!"
  LevelUp         = "%s получил %s %s!"
  ObtainSkill     = "Выучен навык %s!"

  # Использование предметов
  UseItem         = "%s использует %s!"

  # Критический урон
  CriticalToEnemy = "Отличный удар!!"
  CriticalToActor = "Болезненный удар!!"

  # Результат действия на игроке
  ActorDamage     = "%s получает %s урона!"
  ActorRecovery   = "%s восстанавливает %s %s!"
  ActorGain       = "%s получает %s %s!"
  ActorLoss       = "%s теряет %s %s!"
  ActorDrain      = "%s иссушает %s %s!"
  ActorNoDamage   = "%s не получает урон!"
  ActorNoHit      = "Промах! %s не получает урон!"

  # Результат дейсвтия на врагах
  EnemyDamage     = "%s получает %s урона!"
  EnemyRecovery   = "%s восстанавливает %s %s!"
  EnemyGain       = "%s получает %s %s!"
  EnemyLoss       = "%s теряет %s %s!"
  EnemyDrain      = "Из %s высушено %s %s!"
  EnemyNoDamage   = "%s не получает урон!"
  EnemyNoHit      = "Промахнулся! %s не получает урон!"

  # Уклонение/отражение
  Evasion         = "%s уклонился от атаки!"
  MagicEvasion    = "%s нейтролизовал магию!"
  MagicReflection = "%s отразил магию!"
  CounterAttack   = "%s контратакует!"
  Substitute      = "%s защитил %s!"

  # Усиление/ослабление
  BuffAdd         = "У %s повышена %s!"
  DebuffAdd       = "У %s понижена %s!"
  BuffRemove      = "У %s %s вернулась в норму."

  # Навык или предмет не сработали
  ActionFailure   = "На %s это не оказало эффекта!"

  # Ошибки
  PlayerPosError  = "Исходная позиция игрока не установлена."
  EventOverflow   = "Количество вызовов обычных событий превысило лимит."

  # Basic Status
  def self.basic(basic_id)
    $data_system.terms.basic[basic_id]
  end

  # Parameters
  def self.param(param_id)
    $data_system.terms.params[param_id]
  end

  # Equip Type
  def self.etype(etype_id)
    $data_system.terms.etypes[etype_id]
  end

  # Commands
  def self.command(command_id)
    $data_system.terms.commands[command_id]
  end

  # Currency Unit
  def self.currency_unit
    $data_system.currency_unit
  end

  #--------------------------------------------------------------------------
  def self.level;       basic(0);     end   # Level
  def self.level_a;     basic(1);     end   # Level (short)
  def self.hp;          basic(2);     end   # HP
  def self.hp_a;        basic(3);     end   # HP (short)
  def self.mp;          basic(4);     end   # MP
  def self.mp_a;        basic(5);     end   # MP (short)
  def self.tp;          basic(6);     end   # TP
  def self.tp_a;        basic(7);     end   # TP (short)
  def self.fight;       command(0);   end   # Fight
  def self.escape;      command(1);   end   # Escape
  def self.attack;      command(2);   end   # Attack
  def self.guard;       command(3);   end   # Guard
  def self.item;        command(4);   end   # Items
  def self.skill;       command(5);   end   # Skills
  def self.equip;       command(6);   end   # Equip
  def self.status;      command(7);   end   # Status
  def self.formation;   command(8);   end   # Change Formation
  def self.save;        command(9);   end   # Save
  def self.game_end;    command(10);  end   # Exit Game
  def self.weapon;      command(12);  end   # Weapons
  def self.armor;       command(13);  end   # Armor
  def self.key_item;    command(14);  end   # Key Items
  def self.equip2;      command(15);  end   # Change Equipment
  def self.optimize;    command(16);  end   # Ultimate Equipment
  def self.clear;       command(17);  end   # Remove All
  def self.new_game;    command(18);  end   # New Game
  def self.continue;    command(19);  end   # Continue
  def self.shutdown;    command(20);  end   # Shut Down
  def self.to_title;    command(21);  end   # Go to Title
  def self.cancel;      command(22);  end   # Cancel
  #--------------------------------------------------------------------------
end

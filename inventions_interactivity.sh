#!/usr/bin/bash

turned=false
current=0
current_invention='Waterways'

question_text() {
  echo "Would you like to learn about ${@}? [Y/n] "
}

waterways_lesson() {
  echo
  echo
  echo "Waterways"
  echo
  echo "- China built an amazingly large canal named the Grand Canal"
  echo "- It provided a decent method of transportation across China for goods and people"
  echo "- The construction was very expensive forcing hundreds of thousands of Chinese into labor"
  echo "- It ended up with a length of 1100 miles"
}

spinning_wheel_lesson() {
  echo
  echo
  echo "Spinning wheel"
  echo
  echo "- Demand for silk increased"
  echo "- Processing so much silk wasn't easy"
  echo "- Needed strong tool to turn silk -> thread"
  echo "- Easy to use, controlled by single person"
}

coal_and_iron_production_lesson() {
  echo
  echo
  echo "Coal and Iron Production"
  echo
  echo "- First called \"black earth\""
  echo "- Marco Polo later observed how the fuel that was used in England is made"
  echo "- Coal to melt iron and make steel"
  echo "- Steel and iron helped weaponry"
  echo "- Multiple architectures used iron and steel"
}

paper_money_lesson() {
  echo
  echo
  echo "Paper Money"
  echo
  echo "- Invented paper money, \"flying money\""
  echo "- Before used metal coins"
  echo "- Checks made (paper exchangable for cash)"
  echo "- Paper money and checks slowly became more popular globally"
}

ships_lesson() {
  echo
  echo
  echo "Ships"
  echo
  echo "- Chinese ships were advanced"
  echo "- Developed new sail shape (triangle)"
  echo "- Zheng went to africa and came back with variety of goods and animals"
}

magnetic_compass_lesson() {
  echo
  echo
  echo "Magnetic Compass"
  echo
  echo "- Helped navigation at sea"
  echo "- Made from discovered mineral lodestone that attracted to iron"
  echo "- Pointed towards the pole"
}

rebuilding_of_great_wall_lesson() {
  echo
  echo
  echo "Rebuilding of the Great Wall"
  echo
  echo "- The Great Wall was repaired and rebuilt multiple times"
  echo "- The Great Wall is one of the world's seven wonders"
  echo "- Multiple armies were positioned for defense"
  echo "- The Great Wall is the only man-made building visible by the naked eye from outer space"
}

mechanical_clock_lesson() {
  echo
  echo
  echo "Mechanical Clock"
  echo
  echo "- Made by monk/mathematician"
  echo "- Made by dripping water"
  echo "- Military time (24 hours)"
  echo "- Multiple wheels, shafts, etc. compose it"
  echo "- Later a clock was made on a large tower"
}

invention() {
  case $current_invention in

    'Waterways')
      echo
      read -p "$(question_text Waterways)" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
        waterways_reply=$REPLY
        current_invention="Spinning wheel"
        waterways_lesson
        waterways_learned=true
      elif [[ $REPLY =~ ^[Nn]$ ]]
      then
        waterways_reply=$REPLY
        waterways_learned=false
        current_invention="Spinning wheel"
      else
        echo
        echo -n "Invalid input"
        sleep 1
      fi
      ;;

    'Spinning wheel' | 'Coal and Iron Production' | 'Paper Money' | 'Ships' | 'Magnetic Compass' | 'Rebuilding of the Great Wall' | 'Mechanical Clock' | 'next')
      echo
      echo -n "$(question_text Waterways)$waterways_reply"
      if [ "$waterways_learned" = true ]
      then
        waterways_lesson
      fi
      ;;&

    'Spinning wheel')
      echo
      read -p "$(question_text Spinning wheel)" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
        spinning_wheel_reply=$REPLY
        current_invention="Coal and Iron Production"
        spinning_wheel_lesson
        spinning_wheel_learned=true
      elif [[ $REPLY =~ ^[Nn]$ ]]
      then
        spinning_wheel_reply=$REPLY
        spinning_wheel_learned=false
        current_invention="Coal and Iron Production"
      else
        echo
        echo -n "Invalid input"
        sleep 1
      fi
      ;;

    'Coal and Iron Production' | 'Paper Money' | 'Ships' | 'Magnetic Compass' | 'Rebuilding of the Great Wall' | 'Mechanical Clock' | 'next')
      echo
      echo -n "$(question_text Spinning wheel)$spinning_wheel_reply"
      if [ "$spinning_wheel_learned" = true ]
      then
        spinning_wheel_lesson
      fi
      ;;&

    'Coal and Iron Production')
      echo
      read -p "$(question_text Coal and Iron Production)" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
        coal_and_iron_production_reply=$REPLY
        current_invention="Paper Money"
        coal_and_iron_production_lesson
        coal_and_iron_production_learned=true
      elif [[ $REPLY =~ ^[Nn]$ ]]
      then
        coal_and_iron_production_reply=$REPLY
        coal_and_iron_learned=false
        current_invention="Paper Money"
      else
        echo
        echo -n "Invalid input"
        sleep 1
      fi
      ;;
    
    'Paper Money' | 'Ships' | 'Magnetic Compass' | 'Rebuilding of the Great Wall' | 'Mechanical Clock' | 'next')
      echo
      echo -n "$(question_text Coal and Iron Production)$coal_and_iron_production_reply"
      if [ "$coal_and_iron_production_learned" = true ]
      then
        coal_and_iron_production_lesson
      fi
      ;;&

    'Paper Money')
      echo
      read -p "$(question_text Paper Money)" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
        paper_money_reply=$REPLY
        current_invention="Ships"
        paper_money_lesson
        paper_money_learned=true
      elif [[ $REPLY =~ ^[Nn]$ ]]
      then
        paper_money_reply=$REPLY
        paper_money_learned=false
        current_invention="Ships"
      else
        echo
        echo -n "Invalid input"
        sleep 1
      fi
      ;;

    'Ships' | 'Magnetic Compass' | 'Rebuilding of the Great Wall' | 'Mechanical Clock' | 'next')
      echo
      echo -n "$(question_text Paper Money)$paper_money_reply"
      if [ "$paper_money_learned" = true ]
      then
        paper_money_lesson
      fi
    ;;&

    'Ships')
      echo
      read -p "$(question_text Ships)" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
        ships_reply=$REPLY
        current_invention="Magnetic Compass"
        ships_lesson
        ships_learned=true
      elif [[ $REPLY =~ ^[Nn]$ ]]
      then
        ships_reply=$REPLY
        ships_learned=false
        current_invention="Magnetic Compass"
      else
        echo
        echo -n "Invalid input"
        sleep 1
      fi
      ;;

    'Magnetic Compass' | 'Rebuilding of the Great Wall' | 'Mechanical Clock' | 'next')
      echo
      echo -n "$(question_text Ships)$ships_reply"
      if [ "$ships_learned" = true ]
      then
        ships_lesson
      fi
    ;;&

    'Magnetic Compass')
      echo
      read -p "$(question_text Magnetic Compass)" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
        magnetic_compass_reply=$REPLY
        current_invention="Rebuilding of the Great Wall"
        magnetic_compass_lesson
        magnetic_compass_learned=true
      elif [[ $REPLY =~ ^[Nn]$ ]]
      then
        magnetic_compass_reply=$REPLY
        magnetic_compass_learned=false
        current_invention="Rebuilding of the Great Wall"
      else
        echo
        echo -n "Invalid input"
        sleep 1
      fi
      ;;

    'Rebuilding of the Great Wall' | 'Mechanical Clock' | 'next')
      echo
      echo -n "$(question_text Magnetic Compass)$magnetic_compass_reply"
      if [ "$magnetic_compass_learned" = true ]
      then
        magnetic_compass_lesson
      fi
    ;;&

    'Rebuilding of the Great Wall')
      echo
      read -p "$(question_text Rebuilding of the Great Wall)" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
        rebuilding_of_great_wall_reply=$REPLY
        current_invention="Mechanical Clock"
        rebuilding_of_great_wall_lesson
        rebuilding_of_great_wall_learned=true
      elif [[ $REPLY =~ ^[Nn]$ ]]
      then
        rebuilding_of_great_wall_reply=$REPLY
        rebuilding_of_great_wall_learned=false
        current_invention="Mechanical Clock"
      else
        echo
        echo -n "Invalid input"
        sleep 1
      fi
      ;;

    'Mechanical Clock' | 'next')
      echo
      echo -n "$(question_text Rebuilding of the Great Wall)$rebuilding_of_great_wall_reply"
      if [ "$rebuilding_of_great_wall_learned" = true ]
      then
        rebuilding_of_great_wall_lesson
      fi
      ;;&
    
    'Mechanical Clock')
      echo
      read -p "$(question_text Mechanical Clock)" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
        mechanical_clock_reply=$REPLY
        current_invention="next"
        mechanical_clock_lesson
        mechanical_clock_learned=true
      elif [[ $REPLY =~ ^[Nn]$ ]]
      then
        mechanical_clock_reply=$REPLY
        mechanical_clock_learned=false
        current_invention="next"
      else
        echo
        echo -n "Invalid input"
        sleep 1
      fi
    ;;

    'next')
      echo
      echo -n "$(question_text Mechanical Clock)$mechanical_clock_reply"
      if [ "$mechanical_clock_learned" = true ]
      then
        mechanical_clock_lesson
      fi
      echo
      echo 'Yay! You are done with the inventions.'
      echo
      echo 'What would you like to do next?:'
      PS3='Please enter your choice: '
      options=("Restart" "Look at the Car" "Quit")
      select opt in "${options[@]}"
      do
        case $REPLY in
          'Restart' | 1)
            clear
            bash $0
            break
            ;;
          'Look at the Car' | 2)
            clear
            current_invention="--"
            break
            ;;
          'Quit' | 3)
            exit
            ;;
          *) echo Invalid option: $REPLY ;;
        esac
      done
    ;;

    '--') ;;

  esac
}

clear

while true
do
  limit=$(expr "$(tput cols)" - 7)
  spaceRepeat=$(printf " %.0s" $(seq 1 ${current}))
  echo "China A-H Inventions"
  echo "Made by Yash Singh"
  echo
  echo -e "${spaceRepeat}\e[4m|¯|¯¯| \e[24m"
  if [ "$turned" = true ]
  then
    echo -e "${spaceRepeat}⨁    ⨁"
    turned=false
  else
    echo "${spaceRepeat}⨂    ⨂"
    turned=true
  fi
  if [[ $current -ge $limit ]]
  then
    current=0
  else
    let "current = $current + 2"
  fi

  invention

  sleep 0.1
  clear
done

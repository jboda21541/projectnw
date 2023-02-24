#! /bin/bash
while : ; do
    case "$1" in
        -a|--opt_in)
        shift 1
        opt_in="$1"
        ;;
        -b|--opt_base)
        shift 1
        opt_base="$1"
        ;;
        -c|--rate_l)
        shift 1
        rate_l="$1"
        ;;
        -d|--topic_name)
        shift 1
        topic_name="$1"
        ;;
        -e|--msg_type)
        shift 1
        msg_type="$1"
        ;;
        -f|--msg)
        shift 1
        msg="$1"
        ;;
        *) break
    esac
    shift
done

zero=""

if [[ $rate_l == $zero ]]
then
    ros2 "$opt_in" "$opt_base" "$topic_name" "$msg_type" "$msg"
else
    ros2 "$opt_in" "$opt_base"  "$rate_l" "$topic_name" "$msg_type" "$msg"
fi
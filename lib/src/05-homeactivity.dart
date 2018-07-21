import '00-compendium.dart' as compendium;

class HomeActivity extends compendium.Compendium {

  final Map metValue  = const <int, double>{5010 : 3.3
  ,5011 : 2.3
  ,5012 : 3.8
  ,5020 : 3.5
  ,5021 : 3.5
  ,5022 : 3.2
  ,5023 : 2.5
  ,5024 : 4.5
  ,5025 : 2.8
  ,5026 : 3.5
  ,5027 : 4.3
  ,5030 : 3.3
  ,5032 : 2.3
  ,5035 : 3.3
  ,5040 : 2.5
  ,5041 : 1.8
  ,5042 : 2.5
  ,5043 : 3.3
  ,5044 : 3.0
  ,5045 : 6.0
  ,5046 : 2.3
  ,5048 : 4.0
  ,5049 : 3.5
  ,5050 : 2.0
  ,5051 : 2.5
  ,5052 : 2.5
  ,5053 : 2.5
  ,5055 : 2.5
  ,5056 : 7.5
  ,5057 : 3.0
  ,5060 : 2.3
  ,5065 : 2.3
  ,5070 : 1.8
  ,5080 : 1.3
  ,5082 : 2.8
  ,5090 : 2.0
  ,5092 : 4.0
  ,5095 : 2.3
  ,5100 : 3.3
  ,5110 : 5.0
  ,5120 : 5.8
  ,5121 : 5.0
  ,5125 : 4.8
  ,5130 : 3.5
  ,5131 : 2.0
  ,5132 : 6.5
  ,5140 : 4.0
  ,5146 : 3.5
  ,5147 : 3.0
  ,5148 : 2.5
  ,5149 : 2.5
  ,5150 : 9.0
  ,5160 : 2.0
  ,5165 : 3.5
  ,5170 : 2.2
  ,5171 : 2.8
  ,5175 : 3.5
  ,5180 : 5.8
  ,5181 : 3.0
  ,5182 : 2.3
  ,5183 : 2.0
  ,5184 : 2.5
  ,5185 : 2.0
  ,5186 : 3.0
  ,5188 : 1.5
  ,5189 : 2.0
  ,5190 : 2.5
  ,5191 : 2.8
  ,5192 : 3.0
  ,5193 : 4.0
  ,5194 : 5.0
  ,5195 : 3.5
  ,5197 : 2.3
  ,5200 : 4.0
  ,5205 : 2.3};


  final Map metDescription  = const <int, String>{5010 : "cleaning, sweeping carpet or floors, general"
  ,5011 : "cleaning, sweeping, slow, light effort"
  ,5012 : "cleaning, sweeping, slow, moderate effort"
  ,5020 : "cleaning, heavy or major (e.g. wash car, wash windows, clean garage), moderate effort"
  ,5021 : "cleaning, mopping, standing, moderate effort"
  ,5022 : "cleaning windows, washing windows, general"
  ,5023 : "mopping, standing, light effort"
  ,5024 : "polishing floors, standing, walking slowly, using electric polishing machine"
  ,5025 : "multiple household tasks all at once, light effort"
  ,5026 : "multiple household tasks all at once, moderate effort"
  ,5027 : "multiple household tasks all at once, vigorous effort"
  ,5030 : "cleaning, house or cabin, general, moderate effort"
  ,5032 : "dusting or polishing furniture, general"
  ,5035 : "kitchen activity, general, (e.g., cooking, washing dishes, cleaning up), moderate effort"
  ,5040 : "cleaning, general (straightening up, changing linen, carrying out trash, light effort"
  ,5041 : "wash dishes, standing or in general (not broken into stand/walk components)"
  ,5042 : "wash dishes, clearing dishes from table, walking, light effort"
  ,5043 : "vacuuming, general, moderate effort"
  ,5044 : "butchering animals, small"
  ,5045 : "butchering animal, large, vigorous effort"
  ,5046 : "cutting and smoking fish, drying fish or meat"
  ,5048 : "tanning hides, general"
  ,5049 : "cooking or food preparation, moderate effort"
  ,5050 : "cooking or food preparation - standing or sitting or in general (not broken into stand/walk components), manual appliances, light effort"
  ,5051 : "serving food, setting table, implied walking or standing"
  ,5052 : "cooking or food preparation, walking"
  ,5053 : "feeding household animals"
  ,5055 : "putting away groceries (e.g. carrying groceries, shopping without a grocery cart), carrying packages"
  ,5056 : "carrying groceries upstairs"
  ,5057 : "cooking Indian bread on an outside stove"
  ,5060 : "food shopping with or without a grocery cart, standing or walking"
  ,5065 : "non-food shopping, with or without a cart, standing or walking"
  ,5070 : "ironing"
  ,5080 : "knitting, sewing, light effort, wrapping presents, sitting"
  ,5082 : "sewing with a machine"
  ,5090 : "laundry, fold or hang clothes, put clothes in washer or dryer, packing suitcase, washing clothes by hand, implied standing, light effort"
  ,5092 : "laundry, hanging wash, washing clothes by hand, moderate effort"
  ,5095 : "laundry, putting away clothes, gathering clothes to pack, putting away laundry, implied walking"
  ,5100 : "making bed, changing linens"
  ,5110 : "maple syruping/sugar bushing (including carrying buckets, carrying wood)"
  ,5120 : "moving furniture, household items, carrying boxes"
  ,5121 : "moving, lifting light loads"
  ,5125 : "organizing room"
  ,5130 : "scrubbing floors, on hands and knees, scrubbing bathroom, bathtub, moderate effort"
  ,5131 : "scrubbing floors, on hands and knees, scrubbing bathroom, bathtub, light effort"
  ,5132 : "scrubbing floors, on hands and knees, scrubbing bathroom, bathtub, vigorous effort"
  ,5140 : "sweeping garage, sidewalk or outside of house"
  ,5146 : "standing, packing/unpacking boxes, occasional lifting of lightweight household items, loading or unloading items in car, moderate effort"
  ,5147 : "implied walking, putting away household items, moderate effort"
  ,5148 : "watering plants"
  ,5149 : "building a fire inside"
  ,5150 : "moving household items upstairs, carrying boxes or furniture"
  ,5160 : "standing, light effort tasks (pump gas, change light bulb, etc.)"
  ,5165 : "walking, moderate effort tasks, non-cleaning (readying to leave, shut/lock doors, close windows, etc.)"
  ,5170 : "sitting, playing with child(ren), light effort, only active periods"
  ,5171 : "standing, playing with child(ren) light effort, only active periods"
  ,5175 : "walking/running, playing with child(ren), moderate effort, only active periods"
  ,5180 : "walking/running, playing with child(ren), vigorous effort, only active periods"
  ,5181 : "walking and carrying small child, child weighing 15 lbs or more"
  ,5182 : "walking and carrying small child, child weighing less than 15 lbs"
  ,5183 : "standing, holding child"
  ,5184 : "child care, infant, general"
  ,5185 : "child care, sitting/kneeling (e.g., dressing, bathing, grooming, feeding, occasional lifting of child), light effort, general"
  ,5186 : "child care, standing (e.g., dressing, bathing, grooming, feeding, occasional lifting of child), moderate effort"
  ,5188 : "reclining with baby"
  ,5189 : "breastfeeding, sitting or reclining"
  ,5190 : "sit, playing with animals, light effort, only active periods"
  ,5191 : "stand, playing with animals, light effort, only active periods"
  ,5192 : "walk/run, playing with animals, general, light effort, only active periods"
  ,5193 : "walk/run, playing with animals, moderate effort, only active periods"
  ,5194 : "walk/run, playing with animals, vigorous effort, only active periods"
  ,5195 : "standing, bathing dog"
  ,5197 : "animal care, household animals, general"
  ,5200 : "elder care, disabled adult, bathing, dressing, moving into and out of bed, only active periods"
  ,5205 : "elder care, disabled adult, feeding, combing hair, light effort, only active periods"};

}

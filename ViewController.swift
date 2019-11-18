import UIKit
import JTAppleCalendar

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet var calendarView: JTAppleCalendarView!
    @IBOutlet var weekCount: UICollectionView!
    
    @IBOutlet weak var addRecipe: UIButton!
    
    @IBOutlet weak var recipeList: UIButton!
    @IBOutlet weak var groceryList: UIButton!
    @IBOutlet weak var mealPrepPlannerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendarView.scrollDirection = .horizontal
        calendarView.scrollingMode   = .stopAtEachCalendarFrame
        calendarView.showsHorizontalScrollIndicator = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
    }
    func configureCell(view: JTAppleCell?, cellState: CellState) {
        guard let cell = view as? DateCell  else { return }
        cell.dateLabel.text = cellState.text
        handleCellTextColor(cell: cell, cellState: cellState)
    }
    
    func handleCellTextColor(cell: DateCell, cellState: CellState) {
        if cellState.dateBelongsTo == .thisMonth {
            cell.dateLabel.textColor = UIColor.black
        } else {
            cell.dateLabel.textColor = UIColor.gray
        }
    }
    
    //MARK: Actions
    
    @IBAction func addRecipe(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    @IBAction func recipeList(_ sender:Any)
    {
        performSegue(withIdentifier: "recipeListSegue", sender: self)
    }
    
    
    @IBAction func addRecipeButton(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    @IBAction func groceryList(_ sender: Any) {
        performSegue(withIdentifier: "groceryListSegue", sender: self)
    }
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
}

extension ViewController: JTAppleCalendarViewDataSource {
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM dd"

        let startDate = formatter.date(from: "2019 01 01")!
        let endDate = formatter.date(from: "2021 01 01")!
        return ConfigurationParameters(startDate: startDate, endDate: endDate)
    }
}

extension ViewController: JTAppleCalendarViewDelegate {
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "dateCell", for: indexPath) as! DateCell
        self.calendar(calendar, willDisplay: cell, forItemAt: date, cellState: cellState, indexPath: indexPath)
        return cell
    }
    
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        configureCell(view: cell, cellState: cellState)
    }
    
    func calendar(_ calendar: JTAppleCalendarView, willScrollToDateSegmentWith visibleDates: DateSegmentInfo) {
        let date: Date = visibleDates.monthDates.first!.date
        let weekNumber = Calendar.current.component(.weekOfYear, from: date)
        weekCount.scrollToItem(at: IndexPath(item: weekNumber - 1, section: 0), at: .top, animated: true)
    }
    
    func calendar(_ calendar: JTAppleCalendarView, headerViewForDateRange range: (start: Date, end: Date), at indexPath: IndexPath) -> JTAppleCollectionReusableView {
        let formatter = DateFormatter()  // Declare this outside, to avoid instancing this heavy class multiple times.
        formatter.dateFormat = "MMM"
        
        let header = calendar.dequeueReusableJTAppleSupplementaryView(withReuseIdentifier: "DateHeader", for: indexPath) as! DateHeader
        header.monthTitle.text = formatter.string(from: range.start)
        return header
    }

    func calendarSizeForMonths(_ calendar: JTAppleCalendarView?) -> MonthSize? {
        return MonthSize(defaultSize: 50)
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 55
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeekCountCell", for: indexPath) as! WeekCountCell
        cell.countLabel.text = "\(indexPath.item + 1)"
        return cell
    }
    
}

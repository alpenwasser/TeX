DATAFLOW := 'dataFlow'
WORKFLOW := 'latexWorkflow'
SENSOR   := 'sensorProcess'
OVERVIEW := 'texOverview'

data:
	@pdflatex $(DATAFLOW)

sensor:
	@pdflatex $(SENSOR)

workflow:
	@pdflatex $(WORKFLOW)

overview:
	@pdflatex $(OVERVIEW)

all: data sensor workflow overview

clean: 
	@rm -f $(DATAFLOW).aux
	@rm -f $(DATAFLOW).log
	@rm -f $(SENSOR).aux
	@rm -f $(SENSOR).log
	@rm -f $(WORKFLOW).aux
	@rm -f $(WORKFLOW).log
	@rm -f $(OVERVIEW).aux
	@rm -f $(OVERVIEW).log
	#@rm -f $(DATAFLOW).pdf
	#@rm -f $(SENSOR).pdf
	#@rm -f $(WORKFLOW).pdf
	#@rm -f $(OVERVIEW).pdf
